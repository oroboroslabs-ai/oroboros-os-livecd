#!/bin/bash
# OROBOROS OS V1.0 Live CD - ISO Rejoin Script
# Run this after downloading all 4 parts

echo "=== OROBOROS OS V1.0 Live CD - Rejoining ISO ==="

# Check all parts exist
PARTS="OROBOROS-OS-V1.0-Live.part_aa OROBOROS-OS-V1.0-Live.part_ab OROBOROS-OS-V1.0-Live.part_ac OROBOROS-OS-V1.0-Live.part_ad OROBOROS-OS-V1.0-Live.part_ae"
MISSING=0

for part in $PARTS; do
    if [ ! -f "$part" ]; then
        echo "ERROR: Missing $part"
        MISSING=1
    fi
done

if [ $MISSING -eq 1 ]; then
    echo "Please download all 5 parts before running this script."
    exit 1
fi

# Rejoin ISO
echo "Rejoining parts..."
cat OROBOROS-OS-V1.0-Live.part_* > OROBOROS-OS-V1.0-Live.iso

# Verify checksum
echo "Verifying SHA256 checksum..."
SHA256_EXPECTED="27ebaf93a70d20346de4f8c89e09872f953f4efb9169166dde2404bdc1a4277a"
SHA256_ACTUAL=$(sha256sum OROBOROS-OS-V1.0-Live.iso | awk '{print $1}')

if [ "$SHA256_EXPECTED" = "$SHA256_ACTUAL" ]; then
    echo "SUCCESS: ISO verified and ready!"
    echo "File: OROBOROS-OS-V1.0-Live.iso"
    echo "Size: $(du -h OROBOROS-OS-V1.0-Live.iso | cut -f1)"
    echo ""
    echo "To create bootable USB:"
    echo "  Linux: sudo dd if=OROBOROS-OS-V1.0-Live.iso of=/dev/sdX bs=4M status=progress"
    echo "  Windows: Use Rufus or balenaEtcher"
else
    echo "ERROR: Checksum mismatch!"
    echo "Expected: $SHA256_EXPECTED"
    echo "Got: $SHA256_ACTUAL"
fi
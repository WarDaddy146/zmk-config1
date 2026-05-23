echo "=== build.yaml ===" && cat build.yaml && \
echo "\n=== Config Directory ===" && ls -la config/ && \
echo "\n=== Shield Names in build.yaml ===" && grep -i "shield" build.yaml && \
echo "\n=== Overlay Files ===" && find config/ -name "*.overlay" && \
echo "\n=== Keymap Files ===" && find config/ -name "*.keymap" && \
echo "\n=== Conf Files ===" && find config/ -name "*.conf" && \
echo "\n=== Cross-check ===" && \
SHIELD=$(grep "shield:" build.yaml | awk '{print $2}' | tr -d '"') && \
echo "Shield name detected: $SHIELD" && \
echo "Overlay exists: $([ -f config/$SHIELD.overlay ] && echo YES || echo MISSING)" && \
echo "Keymap exists:  $([ -f config/$SHIELD.keymap ] && echo YES || echo MISSING)" && \
echo "Conf exists:    $([ -f config/$SHIELD.conf ] && echo YES || echo MISSING)"
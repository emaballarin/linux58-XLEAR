# ~~ CREDITS ~~
# Maintainer:
# Emanuele Ballarin <emanuele@ballarin.cc>
#
# Manjaro credits:
# Philip Müller <philm[at]manjaro[dot]org>
# Bernhard Landauer <bernhard[at]manjaro[dot]org>
# Helmut Stult <helmut[at]manjaro[dot]org>
#
# Arch credits:
# Tobias Powalowski <tpowa@archlinux.org>
# Thomas Baechler <thomas@archlinux.org>
#
# Patch credits:
# Piotr Górski (Kernel Patches Repository; SirLucjan Kernels)
# Alexandre Frade (XanMod Linux)
# Oleksandr Natalenko (PostFactum Linux)
# The Intel Clear Linux Developers and Community
# ~~ ~~

# Cloud Server
_server=cpx51

pkgbase=linux58-xlear
_pkgbase=linux58
pkgname=('linux58-xlear' 'linux58-xlear-headers')
_kernelname=-XLEAR
_basekernel=5.8
_basever=58
pkgver=5.8.13
pkgrel=2
arch=('x86_64')
url="http://www.kernel.org/"
license=('GPL2')
makedepends=('bc'
    'docbook-xsl'
    'elfutils'
    'git'
    'inetutils'
    'kmod'
    'xmlto')
options=('!strip')
source=(
        # BASE KERNEL
        "https://www.kernel.org/pub/linux/kernel/v5.x/linux-${_basekernel}.tar.xz"

        # NEW KERNEL RELEASE PATCHES
        "https://www.kernel.org/pub/linux/kernel/v5.x/patch-${pkgver}.xz"

        # the main kernel config files
        'config' 'config.anbox'

        # ARCH Patches
        '0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-CLONE_NEWUSER.patch'
        '0002-virtualbox-guest-VBG_IOCTL_ACQUIRE_GUEST_CAPABILITIES.patch'

        # ZEN Patches
        '0001-ZEN-Add-VHBA-driver.patch'

        # MANJARO Patches
        '0101-i2c-nuvoton-nc677x-hwmon-driver.patch'
        '0102-iomap-iomap_bmap-should-accept-unwritten-maps.patch'
        '0103-futex.patch'
        '0104-revert-xhci-Add-support-for-Renesas-controller-with-memory.patch'
        '0201-apparmor-patch-to-provide-compatibility-with-v2-net-rules.patch'
        '0202-apparmor-af_unix-mediation.patch'
        '0203-apparmor-fix-use-after-free-in-sk_peer_label.patch'
        '0204-apparmor-fix-apparmor-mediating-locking-non-fs-unix-sockets.patch'

        # Lenovo + AMD patches
        '0301-nonupstream-navi10-vfio-reset.patch'
        '0302-lenovo-wmi2.patch'
        '0303-pinctrl-amd.patch'
#        '0304-i2c-hid-core.patch' (break the other tochpads)

        # Temp Fixes
        # none

        # Manjaro-backed bootsplash support
        '0401-revert-fbcon-remove-now-unusued-softback_lines-cursor-argument.patch'
        '0402-revert-fbcon-remove-soft-scrollback-code.patch'
        '0501-bootsplash.patch'
        '0502-bootsplash.patch'
        '0503-bootsplash.patch'
        '0504-bootsplash.patch'
        '0505-bootsplash.patch'
        '0506-bootsplash.patch'
        '0507-bootsplash.patch'
        '0508-bootsplash.patch'
        '0509-bootsplash.patch'
        '0510-bootsplash.patch'
        '0511-bootsplash.patch'
        '0512-bootsplash.patch'
        '0513-bootsplash.gitpatch'

        'mkinitcpio_conf.conf'

        # ... add stuff below this line...

        # SIRLUCJAN EARLY FIXES
        '0001-mt76-5.8-mt76x2-fix-pci-suspend.patch'
        '0002-infiniband-Fix-__read_overflow2-error-with-O3-inlini.patch'
        '0002-init-Kconfig-enable-O3-for-all-arches.patch'

        # BFQ-DEV by SIRLUCJAN
        '0001-bfq-reverts.patch'
        '5.8-bfq-dev-lucjan-v13-r2K200929.patch'

        # FSGSBASE
        '0001-x86-ptrace-Prevent-ptrace-from-clearing-the-FS-GS-se.patch'
        '0002-x86-cpu-Add-unsafe_fsgsbase-to-enable-CR4.FSGSBASE.patch'
        '0003-x86-fsgsbase-64-Add-intrinsics-for-FSGSBASE-instruct.patch'
        '0004-x86-fsgsbase-64-Enable-FSGSBASE-instructions-in-help.patch'
        '0005-x86-process-64-Make-save_fsgs_for_kvm-ready-for-FSGS.patch'
        '0006-x86-process-64-Use-FSBSBASE-in-switch_to-if-availabl.patch'
        '0007-x86-process-64-Use-FSGSBASE-instructions-on-thread-c.patch'
        '0008-x86-speculation-swapgs-Check-FSGSBASE-in-enabling-SW.patch'
        '0009-x86-entry-64-Switch-CR3-before-SWAPGS-in-paranoid-en.patch'
        '0010-x86-entry-64-Introduce-the-FIND_PERCPU_BASE-macro.patch'
        '0011-x86-entry-64-Handle-FSGSBASE-enabled-paranoid-entry-.patch'
        '0012-x86-cpu-Enable-FSGSBASE-on-64bit-by-default-and-add-.patch'
        '0013-x86-elf-Enumerate-kernel-FSGSBASE-capability-in-AT_H.patch'
        '0014-Documentation-x86-64-Add-documentation-for-GS-FS-add.patch'
        '0015-selftests-x86-fsgsbase-Test-GS-selector-on-ptracer-i.patch'
        '0016-selftests-x86-fsgsbase-Test-ptracer-induced-GS-base-.patch'
        '0017-selftests-x86-fsgsbase-Fix-a-comment-in-the-ptrace_w.patch'
        '0018-selftests-x86-fsgsbase-Add-a-missing-memory-constrai.patch'
        '0019-x86-ptrace-Fix-32-bit-PTRACE_SETREGS-vs-fsbase-and-g.patch'
        '0020-selftests-x86-Add-a-syscall_arg_fault_64-test-for-ne.patch'
        '0021-fsgsbase-5.8-remove-erroneous-if-expression-bit.patch'
        '0022-x86-fsgsbase-Fix-Xen-PV-support.patch'
        '0023-fsgsbase-5.8-minor-resync-with-upstream-PR.patch'

        # XANMOD TRACE EVENTS for READAHEAD
        '0001-trace-add-trace-events-for-open-exec-and-uselib.patch'

        # SYMBOLS FOR ANDROID/ANBOX
        '0001-android-patches.patch'

        # ZSTD KERNEL COMPRESSION
        '0001-lib-prepare-zstd-for-preboot-environment.patch'
        '0002-lib-add-zstd-support-to-decompress.patch'
        '0003-init-add-support-for-zstd-compressed-kernel.patch'
        '0004-usr-add-support-for-zstd-compressed-initramfs.patch'
        '0005-x86-bump-ZO_z_extra_bytes-margin-for-zstd.patch'
        '0006-x86-Add-support-for-ZSTD-compressed-kernel.patch'
        '0007-.gitignore-add-ZSTD-compressed-files.patch'
        '0008-Documentation-dontdiff-Add-zstd-compressed-files.patch'
        '0009-init-add-support-for-zstd-compressed-modules.patch'
        '0010-x86-boot-compressed-Use-builtin-mem-functions-for-de.patch'

        # XANMOD PATCHSET
        '0000-sched-core-nr_migrate-256-increases-number-of-tasks-.patch'
        '0001-elevator-set-default-scheduler-to-bfq-for-blk-mq.patch'
        '0002-block-bfq-change-BLK_DEV_ZONED-depends-to-IOSCHED_BF.patch'
        '0003-mm-set-2-megabytes-for-address_space-level-file-read.patch'
        '0004-block-set-rq_affinity-2-for-full-multithreading-I-O-.patch'
        '0005-kconfig-add-500Hz-timer-interrupt-kernel-config-opti.patch'
        '0006-kconfig-set-PREEMPT-and-RCU_BOOST-without-delay-by-d.patch'
        '0007-dcache-cache_pressure-50-decreases-the-rate-at-which.patch'
        '0008-sched-autogroup-Add-kernel-parameter-and-config-opti.patch'
        '0009-mm-vmscan-vm_swappiness-30-decreases-the-amount-of-s.patch'
        '0010-pci-Enable-overrides-for-missing-ACS-capabilities.patch'
        '0011-cpufreq-tunes-ondemand-and-conservative-governor-for.patch'
        '0012-scripts-disable-the-localversion-tag-of-a-git-repo.patch'
        '0013-net-sched-allow-configuring-cake-qdisc-as-default.patch'
        '0014-lib-kconfig.debug-disable-default-CONFIG_SYMBOLIC_ER.patch'
        '0015-net-sched-Allow-changing-default-qdisc-to-FQ-PIE.patch'

        # SIRLUCJAN MMFIXES
        '0004-mm-Disable-watermark-boosting-by-default.patch'
        '0005-mm-Stop-kswapd-early-when-nothing-s-waiting-for-it-t.patch'
        '0006-mm-Fully-disable-watermark-boosting-when-it-isn-t-us.patch'
        '0007-mm-Don-t-stop-kswapd-on-a-per-node-basis-when-there-.patch'
        '0008-kbuild-Disable-stack-conservation-for-GCC.patch'
        '0010-mm-Proactive-compaction.patch'
        '0011-mm-Use-unsigned-types-for-fragmentation-score.patch'
        '0012-mm-Fix-compile-error-due-to-COMPACTION_HPAGE_ORDER.patch'

        # SIRLUCJAN MISCFIXES
        '0014-ALSA-hda-hdmi-Add-Intel-silent-stream-support.patch'
        '0016-vfs-keep-inodes-with-page-cache-off-the-inode-shrink.patch'
        '0017-tty-Allow-setting-the-number-of-available-virtual-TT.patch'

        # SIRLUCJAN EXTRAFEATURES
        '0001-mm-ksm-introduce-ksm_madvise_merge-helper.patch'
        '0002-mm-ksm-introduce-ksm_madvise_unmerge-helper.patch'
        '0003-mm-ksm-proc-introduce-remote-merge.patch'
        '0004-mm-ksm-proc-add-remote-KSM-documentation.patch'
        '0001-UKSM-for-5.8.patch'
        '0001-capabilities-Introduce-CAP_CHECKPOINT_RESTORE.patch'
        '0002-pid-use-checkpoint_restore_ns_capable-for-set_tid.patch'
        '0003-pid_namespace-use-checkpoint_restore_ns_capable-for-.patch'
        '0004-proc-allow-access-in-init-userns-for-map_files-with-.patch'
        '0005-prctl-Allow-local-CAP_CHECKPOINT_RESTORE-to-change-p.patch'
        '0006-prctl-exe-link-permission-error-changed-from-EINVAL-.patch'
        '0007-selftests-add-clone3-CAP_CHECKPOINT_RESTORE-test.patch'

        # SIRLUCJAN BLOCKFIXES
        '0011-block-Convert-to-use-the-preferred-fallthrough-macro.patch'
        '0012-block-bfq-Disable-low_latency-when-blk_iolatency-is-.patch'

        # CLEAR LINUX PATCHSET
        '0101-i8042-decrease-debug-message-level-to-info.patch'
        '0103-silence-rapl.patch'
        '0104-pci-pme-wakeups.patch'
        '0105-ksm-wakeups.patch'
        '0106-intel_idle-tweak-cpuidle-cstates.patch'
        '0108-smpboot-reuse-timer-calibration.patch'
        '0109-raid6-add-Kconfig-option-to-skip-raid6-benchmarking.patch'
        '0110-initialize-ata-before-graphics.patch'
        '0111-give-rdrand-some-credit.patch'
        '0112-ipv4-tcp-allow-the-memory-tuning-for-tcp-to-go-a-lit.patch'
        '0113-kernel-time-reduce-ntp-wakeups.patch'
        '0114-init-wait-for-partition-and-retry-scan.patch'
        '0116-add-boot-option-to-allow-unsigned-modules.patch'
        '0117-enable-stateless-firmware-loading.patch'
        '0118-migrate-some-systemd-defaults-to-the-kernel-defaults.patch'
        '0119-xattr-allow-setting-user.-attributes-on-symlinks-by-.patch'
        '0120-add-scheduler-turbo3-patch.patch'
        '0121-use-lfence-instead-of-rep-and-nop.patch'
        '0122-do-accept-in-LIFO-order-for-cache-efficiency.patch'
        '0123-locking-rwsem-spin-faster.patch'
        '0124-ata-libahci-ignore-staggered-spin-up.patch'
        '0125-print-CPU-that-faults.patch'
        '0126-x86-microcode-Force-update-a-uCode-even-if-the-rev-i.patch'
        '0127-x86-microcode-echo-2-reload-to-force-load-ucode.patch'
        '0128-fix-bug-in-ucode-force-reload-revision-check.patch'
        '0129-nvme-workaround.patch'
        '0130-don-t-report-an-error-if-PowerClamp-run-on-other-CPU.patch'

        # GLITCHED
        'glitched.patch'

        # ... add stuff above this line...

        # GRAYSKY
        'enable_additional_cpu_optimizations_for_gcc_v10.1+_kernel_v5.8+.patch'

        )
sha256sums=(
            'e7f75186aa0642114af8f19d99559937300ca27acaf7451b36d4f9b0f85cf1f5'
            '1afdba17525f899c855eff4044a1519474c7164d3501e5d89565c9b6b1f5fd1b'
            'SKIP'

            'fc896e5b00fad732d937bfb7b0db41922ecdb3a488bc1c1b91b201e028eed866'

            '986f8d802f37b72a54256f0ab84da83cb229388d58c0b6750f7c770818a18421'
            'aa9c045d4b1d92571aefd6182b26024fc4f8757d2388065289becd5130103214'

            'SKIP'

            '7823d7488f42bc4ed7dfae6d1014dbde679d8b862c9a3697a39ba0dae5918978'
            '95745075edd597caa92b369cfbcd11a04c9e3c88c0c987c70114924e1e01df5c'
            '78dde51123a21ec5efe9c420b309d03263001dafd8684f71c167f02e3f504f9e'
            '14fff25b581a0a8281a3419abd54d3bd200ede0374e685799da804f941c50f79'
            '98202b8ad70d02d86603294bae967874fa7b18704b5c7b867568b0fd33a08921'
            '5cbbf3db9ea3205e9b89fe3049bea6dd626181db0cb0dc461e4cf5a400c68dd6'
            'c7dbec875d0c1d6782c037a1dcefff2e5bdb5fc9dffac1beea07dd8c1bdef1d7'
            '77746aea71ffb06c685e7769b49c78e29af9b2e28209cd245e95d9cbb0dba3c9'

            '382241dfd68c30f3d6aa77b53366950a7feaacd0c651b88cf8e2c1b40ef65caf'
            '1d58ef2991c625f6f0eb33b4cb8303932f53f1c4694e42bae24c9cd36d2ad013'
            '427fd41ac742110d413f01daba66d5cd023b8e63fdc63242fcc96f589e66867f'
            'ddf1e7fc55cc6fe81ecfcac84112e573ca95713c027bc84d69cf880812fd6ff3'
            '37a221c12b40122167b0a30b5a9f2fc99e2aeb94e4db58a719c2b30171c5aeb5'
            'a504f6cf84094e08eaa3cc5b28440261797bf4f06f04993ee46a20628ff2b53c'
            'e096b127a5208f56d368d2cb938933454d7200d70c86b763aa22c38e0ddb8717'
            '8c1c880f2caa9c7ae43281a35410203887ea8eae750fe8d360d0c8bf80fcc6e0'
            '1144d51e5eb980fceeec16004f3645ed04a60fac9e0c7cf88a15c5c1e7a4b89e'
            'dd4b69def2efacf4a6c442202ad5cb93d492c03886d7c61de87696e5a83e2846'
            '028b07f0c954f70ca37237b62e04103e81f7c658bb8bd65d7d3c2ace301297dc'
            'c8b0cb231659d33c3cfaed4b1f8d7c8305ab170bdd4c77fce85270d7b6a68000'
            '8dbb5ab3cb99e48d97d4e2f2e3df5d0de66f3721b4f7fd94a708089f53245c77'
            'a7aefeacf22c600fafd9e040a985a913643095db7272c296b77a0a651c6a140a'
            'e9f22cbb542591087d2d66dc6dc912b1434330ba3cd13d2df741d869a2c31e89'
            '27471eee564ca3149dd271b0817719b5565a9594dc4d884fe3dc51a5f03832bc'
            '60e295601e4fb33d9bf65f198c54c7eb07c0d1e91e2ad1e0dd6cd6e142cb266d'
            '035ea4b2a7621054f4560471f45336b981538a40172d8f17285910d4e0e0b3ef'

            'SKIP'

            # ... add stuff below this line...

            'SKIP'
            'SKIP'
            'SKIP'

            'SKIP'
            'SKIP'

            'SKIP'

            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'

            'SKIP'

            'SKIP'
            'SKIP'

            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'

            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'

            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'

            'SKIP'
            'SKIP'

            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'

            'SKIP'
            'SKIP'

            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'

            # ... add stuff above this line...

            'SKIP'

            )
prepare() {
  # Some flag magic
  unset CXXFLAGS
  unset CFFLAGS
  unset CFLAGS
  unset FFLAGS
  unset LDFLAGS
  export CXXFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native -fvisibility-inlines-hidden -Wl,--enable-new-dtags"
  export CFFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
  export CFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
  export FFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,--enable-new-dtags -march=native"
  export LDFLAGS="-Wl,-O3,--sort-common,--as-needed,-z,relro,-z,now"


  cd "${srcdir}/linux-${_basekernel}"

  # ~~ APPLY PATCHES... ~~

  # add upstream patch
  msg "add upstream patch"
  patch -p1 -i "${srcdir}/patch-${pkgver}"

  # THE PATCH-UNROLLER!
  local src
  for src in "${source[@]}"; do
      src="${src%%::*}"
      src="${src##*/}"
      [[ $src = *.patch ]] || continue
      msg2 "Applying patch: $src..."
      patch -Np1 < "../$src"
  done

  # Defer this patch and see if everything works...
  msg2 "0513-bootsplash"
  git apply -p1 < "${srcdir}/0513-bootsplash.gitpatch"

  # ~~ ALL PATCHES APPLIED! ~~

  msg2 "add config.anbox to config"
  cat "${srcdir}/config" > ./.config
  cat "${srcdir}/config.anbox" >> ./.config

  if [ "${_kernelname}" != "" ]; then
    sed -i "s|CONFIG_LOCALVERSION=.*|CONFIG_LOCALVERSION=\"${_kernelname}\"|g" ./.config
    sed -i "s|CONFIG_LOCALVERSION_AUTO=.*|CONFIG_LOCALVERSION_AUTO=n|" ./.config
  fi

  msg "set extraversion to pkgrel"
  sed -ri "s|^(EXTRAVERSION =).*|\1 -${pkgrel}|" Makefile

  msg "don't run depmod on 'make install'"
  # We'll do this ourselves in packaging
  sed -i '2iexit 0' scripts/depmod.sh

  msg "get kernel version"
  make prepare

  # load configuration
  # Configure the kernel. Replace the line below with one of your choice.
  #make menuconfig # CLI menu for configuration
  #make nconfig # new CLI menu for configuration
  #make xconfig # X-based configuration
  #make oldconfig # using old config from previous kernel version
  # ... or manually edit .config

  msg "rewrite configuration"
  yes "" | make config >/dev/null
}

build() {
  # Some flag magic
  unset CXXFLAGS
  unset CFFLAGS
  unset CFLAGS
  unset FFLAGS
  unset LDFLAGS
  export CXXFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native -fvisibility-inlines-hidden -Wl,--enable-new-dtags"
  export CFFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
  export CFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
  export FFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,--enable-new-dtags -march=native"
  export LDFLAGS="-Wl,-O3,--sort-common,--as-needed,-z,relro,-z,now"


  cd "${srcdir}/linux-${_basekernel}"

  msg "build"
  make ${MAKEFLAGS} LOCALVERSION= bzImage modules
}

package_linux58-xlear() {
  pkgdesc="The ${_pkgbase/linux/Linux} kernel and modules"
  depends=('coreutils' 'linux-firmware' 'kmod' 'mkinitcpio>=27' 'crda')
  provides=("linux=${pkgver}" VIRTUALBOX-GUEST-MODULES WIREGUARD-MODULE)
  backup=("etc/mkinitcpio.d/${pkgbase}.preset")

  # Some flag magic
  unset CXXFLAGS
  unset CFFLAGS
  unset CFLAGS
  unset FFLAGS
  unset LDFLAGS
  export CXXFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native -fvisibility-inlines-hidden -Wl,--enable-new-dtags"
  export CFFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
  export CFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
  export FFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,--enable-new-dtags -march=native"
  export LDFLAGS="-Wl,-O3,--sort-common,--as-needed,-z,relro,-z,now"


  cd "${srcdir}/linux-${_basekernel}"

  KARCH=x86

  # get kernel version
  _kernver="$(make LOCALVERSION= kernelrelease)"

  mkdir -p "${pkgdir}"/{boot,usr/lib/modules}
  make LOCALVERSION= INSTALL_MOD_PATH="${pkgdir}/usr" INSTALL_MOD_STRIP=1 modules_install

  # systemd expects to find the kernel here to allow hibernation
  # https://github.com/systemd/systemd/commit/edda44605f06a41fb86b7ab8128dcf99161d2344
  cp arch/$KARCH/boot/bzImage "${pkgdir}/usr/lib/modules/${_kernver}/vmlinuz"

  # Used by mkinitcpio to name the kernel
  echo "${_pkgbase}" | install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_kernver}/_pkgbase"
  echo "${_basekernel}-${CARCH}" | install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_kernver}/kernelbase"

  # add kernel version
  echo "${pkgver}-${pkgrel}-XLEAR x64" > "${pkgdir}/boot/${_pkgbase}-${CARCH}.kver"

  # make room for external modules
  local _extramodules="extramodules-${_basekernel}${_kernelname:--XLEAR}"
  ln -s "../${_extramodules}" "${pkgdir}/usr/lib/modules/${_kernver}/extramodules"

  # add real version for building modules and running depmod from hook
  echo "${_kernver}" |
    install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_extramodules}/version"

  # remove build and source links
  rm "${pkgdir}"/usr/lib/modules/${_kernver}/{source,build}

  # now we call depmod...
  depmod -b "${pkgdir}/usr" -F System.map "${_kernver}"

  # add vmlinux
  install -Dt "${pkgdir}/usr/lib/modules/${_kernver}/build" -m644 vmlinux

  # Work around some Manjaro shortcomings
  cp "${pkgdir}/usr/lib/modules/${pkgver}-${pkgrel}${_kernelname}/vmlinuz" "${pkgdir}/boot/vmlinuz-${_basekernel}-x86_64"
  mkdir -p "${pkgdir}/etc/mkinitcpio.d/"
  cp "${srcdir}/mkinitcpio_conf.conf" "${pkgdir}/etc/mkinitcpio.d/${pkgbase}.preset"
}

package_linux58-xlear-headers() {
  pkgdesc="Header files and scripts for building modules for ${_pkgbase/linux/Linux} kernel"
  provides=("linux-headers=$pkgver")

  # Some flag magic
  unset CXXFLAGS
  unset CFFLAGS
  unset CFLAGS
  unset FFLAGS
  unset LDFLAGS
  export CXXFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native -fvisibility-inlines-hidden -Wl,--enable-new-dtags"
  export CFFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
  export CFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
  export FFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,--enable-new-dtags -march=native"
  export LDFLAGS="-Wl,-O3,--sort-common,--as-needed,-z,relro,-z,now"

  cd "${srcdir}/linux-${_basekernel}"
  local _builddir="${pkgdir}/usr/lib/modules/${_kernver}/build"

  install -Dt "${_builddir}" -m644 Makefile .config Module.symvers
  install -Dt "${_builddir}/kernel" -m644 kernel/Makefile

  mkdir "${_builddir}/.tmp_versions"

  cp -t "${_builddir}" -a include scripts

  install -Dt "${_builddir}/arch/${KARCH}" -m644 "arch/${KARCH}/Makefile"
  install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 "arch/${KARCH}/kernel/asm-offsets.s"
  #install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 "arch/${KARCH}/kernel/macros.s"

  cp -t "${_builddir}/arch/${KARCH}" -a "arch/${KARCH}/include"

  install -Dt "${_builddir}/drivers/md" -m644 drivers/md/*.h
  install -Dt "${_builddir}/net/mac80211" -m644 net/mac80211/*.h

  # http://bugs.archlinux.org/task/13146
  install -Dt "${_builddir}/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

  # http://bugs.archlinux.org/task/20402
  install -Dt "${_builddir}/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
  install -Dt "${_builddir}/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
  install -Dt "${_builddir}/drivers/media/tuners" -m644 drivers/media/tuners/*.h

  # add xfs and shmem for aufs building
  mkdir -p "${_builddir}"/{fs/xfs,mm}

  # copy in Kconfig files
  find . -name Kconfig\* -exec install -Dm644 {} "${_builddir}/{}" \;

  # add objtool for external module building and enabled VALIDATION_STACK option
  install -Dt "${_builddir}/tools/objtool" tools/objtool/objtool

  # remove unneeded architectures
  local _arch
  for _arch in "${_builddir}"/arch/*/; do
    [[ ${_arch} == */x86/ ]] && continue
    rm -r "${_arch}"
  done

  # remove files already in linux-docs package
  rm -r "${_builddir}/Documentation"

  # Fix permissions
  chmod -R u=rwX,go=rX "${_builddir}"

  # strip scripts directory
  local _binary _strip
  while read -rd '' _binary; do
    case "$(file -bi "${_binary}")" in
      *application/x-sharedlib*)  _strip="${STRIP_SHARED}"   ;; # Libraries (.so)
      *application/x-archive*)    _strip="${STRIP_STATIC}"   ;; # Libraries (.a)
      *application/x-executable*) _strip="${STRIP_BINARIES}" ;; # Binaries
      *) continue ;;
    esac
    /usr/bin/strip ${_strip} "${_binary}"
  done < <(find "${_builddir}/scripts" -type f -perm -u+w -print0 2>/dev/null)
}

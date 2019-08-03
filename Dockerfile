FROM dean123363/arm-android-toolchain
LABEL maintainer=alvis<alvisisme@163.com>
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y --no-install-recommends binutils cmake git patch

USER root
WORKDIR /out
VOLUME ["/out"]
CMD ["/bin/bash", "/out/build.sh"]

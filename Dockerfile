FROM theypsilon/quartus-lite-c5:17.1.docker0
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile Arcade-Galaxian.qpf
CMD cat /project/output_files/Arcade-Galaxian.rbf
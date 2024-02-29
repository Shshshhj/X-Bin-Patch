FROM theteamultroid/ultroid:main

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY installer.sh .
RUN bash installer.sh

WORKDIR "/root/TeamUltroid"

CMD ["bash", "startup"]

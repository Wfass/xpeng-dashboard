.class public interface abstract Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;
    }
.end annotation


# virtual methods
.method public abstract getProbeStatus(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;
.end method

.method public abstract launchIPProbeTask(Ljava/lang/String;I[Ljava/lang/String;)V
.end method

.method public abstract setIPListUpdateCallback(Lcom/alibaba/sdk/android/httpdns/probe/b;)V
.end method

.method public abstract stopIPProbeTask(Ljava/lang/String;)Z
.end method

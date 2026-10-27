.class public interface abstract Lcom/qiyi/video/client/IQYSService;
.super Ljava/lang/Object;
.source "IQYSService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiyi/video/client/IQYSService$Callback;
    }
.end annotation


# virtual methods
.method public abstract executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/client/IQYSService$Callback;)V
.end method

.method public abstract executeSync(Lcom/qiyi/video/qys/IQYSRequest;)Lcom/qiyi/video/qys/IQYSResponse;
.end method

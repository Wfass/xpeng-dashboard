.class public Lcom/xiaopeng/appstart/core/util/AppStartTaskLogUtil;
.super Ljava/lang/Object;
.source "AppStartTaskLogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStartTask "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showLog(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "AppStartTask "

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

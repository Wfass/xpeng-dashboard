.class public Lcom/xiaopeng/musicradio/model/mediacenter/command/MediaCenterCommand;
.super Lbox;
.source "MediaCenterCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaCenterControlCommand"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "liangyc"

    const-string v2, "do MediaCenterCommand"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 23
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->onPlaybackControl(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCenterControlCommand"

    return-object v0
.end method

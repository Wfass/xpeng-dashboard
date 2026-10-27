.class public Lcom/xiaopeng/musicradio/speech/command/NeteaseRankListCommand;
.super Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;
.source "NeteaseRankListCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NeteaseRankListCommand"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b()Lbaj;
    .locals 1

    .line 21
    invoke-static {}, Lbbb;->a()Lbbb;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "NeteaseRankListCommand"

    return-object v0
.end method

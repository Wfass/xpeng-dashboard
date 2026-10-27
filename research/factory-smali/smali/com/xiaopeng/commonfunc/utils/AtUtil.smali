.class public Lcom/xiaopeng/commonfunc/utils/AtUtil;
.super Ljava/lang/Object;
.source "AtUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/utils/AtUtil$Versname;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$SpkTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$McuTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$Gsensor;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$BattTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$CanTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$EepromTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$LteTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$QrCode;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$BtTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$WifiTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$FailDump;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$FanTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$TouchTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$LcdTest;,
        Lcom/xiaopeng/commonfunc/utils/AtUtil$FmTest;
    }
.end annotation


# static fields
.field public static final MSG_SOCKET_CONNECTED:Ljava/lang/String; = "CONNECTION COMPLETED\r\n"

.field public static final arg0:Ljava/lang/String; = "0"

.field public static final arg1:Ljava/lang/String; = "1"

.field public static final arg2:Ljava/lang/String; = "2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static responseNA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",NA\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static responseNG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",NG\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static responseOK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",OK\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static responseString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",OK\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

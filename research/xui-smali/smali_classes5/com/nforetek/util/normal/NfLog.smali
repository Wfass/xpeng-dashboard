.class public final Lcom/nforetek/util/normal/NfLog;
.super Ljava/lang/Object;
.source "NfLog.java"


# static fields
.field private static D:Z

.field private static E:Z

.field private static I:Z

.field private static V:Z

.field private static W:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nforetek/util/normal/NfLog;->V:Z

    .line 51
    sput-boolean v0, Lcom/nforetek/util/normal/NfLog;->D:Z

    .line 52
    sput-boolean v0, Lcom/nforetek/util/normal/NfLog;->I:Z

    .line 53
    sput-boolean v0, Lcom/nforetek/util/normal/NfLog;->W:Z

    .line 54
    sput-boolean v0, Lcom/nforetek/util/normal/NfLog;->E:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 106
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->D:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 107
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 118
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->D:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 119
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 186
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->E:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 187
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 198
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->E:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 199
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 129
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->I:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 130
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 141
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->I:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 142
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 61
    sput-boolean p0, Lcom/nforetek/util/normal/NfLog;->D:Z

    .line 62
    return-void
.end method

.method public static setError(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 73
    sput-boolean p0, Lcom/nforetek/util/normal/NfLog;->E:Z

    .line 74
    return-void
.end method

.method public static setInfo(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 65
    sput-boolean p0, Lcom/nforetek/util/normal/NfLog;->I:Z

    .line 66
    return-void
.end method

.method public static setVerbose(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 57
    sput-boolean p0, Lcom/nforetek/util/normal/NfLog;->V:Z

    .line 58
    return-void
.end method

.method public static setWarn(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 69
    sput-boolean p0, Lcom/nforetek/util/normal/NfLog;->W:Z

    .line 70
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 83
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->V:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 84
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 95
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->V:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 96
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 152
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->W:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 153
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 164
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->W:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 165
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 175
    sget-boolean v0, Lcom/nforetek/util/normal/NfLog;->W:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 176
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

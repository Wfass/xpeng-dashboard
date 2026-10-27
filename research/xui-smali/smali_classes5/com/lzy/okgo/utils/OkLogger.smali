.class public Lcom/lzy/okgo/utils/OkLogger;
.super Ljava/lang/Object;
.source "OkLogger.java"


# static fields
.field private static isLogEnable:Z

.field private static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    .line 32
    const-string v0, "OkGo"

    sput-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "isEnable"    # Z

    .line 39
    sput-object p0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    .line 40
    sput-boolean p1, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    .line 41
    return-void
.end method

.method public static debug(Z)V
    .locals 1
    .param p0, "isEnable"    # Z

    .line 35
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->debug(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 80
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 64
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 84
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 48
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 72
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

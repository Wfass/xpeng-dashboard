.class public Lcom/lzy/okgo/f/d;
.super Ljava/lang/Object;
.source "OkLogger.java"


# static fields
.field private static mJ:Z

.field private static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lzy/okgo/f/d;->mJ:Z

    .line 32
    const-string v0, "OkGo"

    sput-object v0, Lcom/lzy/okgo/f/d;->tag:Ljava/lang/String;

    return-void
.end method

.method public static f(Ljava/lang/Throwable;)V
    .locals 1

    .line 84
    sget-boolean v0, Lcom/lzy/okgo/f/d;->mJ:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    sget-boolean v0, Lcom/lzy/okgo/f/d;->mJ:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method

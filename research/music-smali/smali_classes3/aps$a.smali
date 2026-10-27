.class Laps$a;
.super Landroid/os/Handler;
.source "ThemeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laps$1;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Laps$a;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 195
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 196
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {}, Laps;->a()Laps;

    move-result-object p1

    invoke-static {p1}, Laps;->a(Laps;)V

    :goto_0
    return-void
.end method

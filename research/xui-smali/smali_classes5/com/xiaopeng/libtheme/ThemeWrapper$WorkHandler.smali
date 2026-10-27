.class Lcom/xiaopeng/libtheme/ThemeWrapper$WorkHandler;
.super Landroid/os/Handler;
.source "ThemeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_HANDLER_TIMEOUT:I = 0x64


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/libtheme/ThemeWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/libtheme/ThemeWrapper$1;

    .line 191
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeWrapper$WorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 195
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getInstance()Lcom/xiaopeng/libtheme/ThemeWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->access$300(Lcom/xiaopeng/libtheme/ThemeWrapper;)V

    .line 201
    :goto_0
    return-void
.end method

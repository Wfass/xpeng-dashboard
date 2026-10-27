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

    .line 190
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/libtheme/ThemeWrapper$1;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeWrapper$WorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 194
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 195
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getInstance()Lcom/xiaopeng/libtheme/ThemeWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->access$300(Lcom/xiaopeng/libtheme/ThemeWrapper;)V

    .line 200
    :goto_0
    return-void
.end method

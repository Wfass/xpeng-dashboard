.class public Lcom/xiaopeng/xui/app/XDialogPure$Parameters;
.super Ljava/lang/Object;
.source "XDialogPure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XDialogPure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field private mFullScreen:Z

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mTheme:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isDialogFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->mFullScreen:Z

    .line 265
    return-void
.end method

.method public static Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;
    .locals 1

    .line 260
    new-instance v0, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    invoke-direct {v0}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;-><init>()V

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 253
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->mTheme:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 253
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->mFullScreen:Z

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method


# virtual methods
.method public setFullScreen(Z)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;
    .locals 0
    .param p1, "fullScreen"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->mFullScreen:Z

    .line 274
    return-object p0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;
    .locals 0
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 278
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 279
    return-object p0
.end method

.method public setTheme(I)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;
    .locals 0
    .param p1, "theme"    # I

    .line 268
    iput p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->mTheme:I

    .line 269
    return-object p0
.end method

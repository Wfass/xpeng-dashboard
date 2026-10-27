.class public Lcom/xiaopeng/xui/app/XDialog$Parameters;
.super Ljava/lang/Object;
.source "XDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field private mFullScreen:Z

.field private mTheme:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isDialogFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mFullScreen:Z

    .line 486
    return-void
.end method

.method public static Builder()Lcom/xiaopeng/xui/app/XDialog$Parameters;
    .locals 1

    .line 481
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog$Parameters;

    invoke-direct {v0}, Lcom/xiaopeng/xui/app/XDialog$Parameters;-><init>()V

    return-object v0
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XDialog$Parameters;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XDialog$Parameters;

    .line 475
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mTheme:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XDialog$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XDialog$Parameters;

    .line 475
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mFullScreen:Z

    return v0
.end method


# virtual methods
.method public setFullScreen(Z)Lcom/xiaopeng/xui/app/XDialog$Parameters;
    .locals 0
    .param p1, "fullScreen"    # Z

    .line 494
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mFullScreen:Z

    .line 495
    return-object p0
.end method

.method public setTheme(I)Lcom/xiaopeng/xui/app/XDialog$Parameters;
    .locals 0
    .param p1, "theme"    # I

    .line 489
    iput p1, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mTheme:I

    .line 490
    return-object p0
.end method

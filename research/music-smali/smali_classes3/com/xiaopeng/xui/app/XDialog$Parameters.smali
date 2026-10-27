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

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isDialogFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mFullScreen:Z

    return-void
.end method

.method public static Builder()Lcom/xiaopeng/xui/app/XDialog$Parameters;
    .locals 1

    .line 626
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog$Parameters;

    invoke-direct {v0}, Lcom/xiaopeng/xui/app/XDialog$Parameters;-><init>()V

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/app/XDialog$Parameters;)I
    .locals 0

    .line 620
    iget p0, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mTheme:I

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/app/XDialog$Parameters;)Z
    .locals 0

    .line 620
    iget-boolean p0, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mFullScreen:Z

    return p0
.end method


# virtual methods
.method public setFullScreen(Z)Lcom/xiaopeng/xui/app/XDialog$Parameters;
    .locals 0

    .line 639
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mFullScreen:Z

    return-object p0
.end method

.method public setTheme(I)Lcom/xiaopeng/xui/app/XDialog$Parameters;
    .locals 0

    .line 634
    iput p1, p0, Lcom/xiaopeng/xui/app/XDialog$Parameters;->mTheme:I

    return-object p0
.end method

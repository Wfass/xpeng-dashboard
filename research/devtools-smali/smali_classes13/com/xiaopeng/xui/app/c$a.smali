.class public Lcom/xiaopeng/xui/app/c$a;
.super Ljava/lang/Object;
.source "XDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private ZX:Z

.field private mTheme:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    invoke-static {}, Lcom/xiaopeng/xui/a;->qn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/c$a;->ZX:Z

    .line 486
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/app/c$a;)I
    .locals 0

    .line 475
    iget p0, p0, Lcom/xiaopeng/xui/app/c$a;->mTheme:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/xui/app/c$a;)Z
    .locals 0

    .line 475
    iget-boolean p0, p0, Lcom/xiaopeng/xui/app/c$a;->ZX:Z

    return p0
.end method

.method public static qt()Lcom/xiaopeng/xui/app/c$a;
    .locals 1

    .line 481
    new-instance v0, Lcom/xiaopeng/xui/app/c$a;

    invoke-direct {v0}, Lcom/xiaopeng/xui/app/c$a;-><init>()V

    return-object v0
.end method

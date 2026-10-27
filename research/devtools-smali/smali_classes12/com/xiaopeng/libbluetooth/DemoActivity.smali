.class public Lcom/xiaopeng/libbluetooth/DemoActivity;
.super Landroid/app/Activity;
.source "DemoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Xq:Lcom/xiaopeng/libbluetooth/f;

.field private Xr:Lcom/xiaopeng/libbluetooth/g;

.field private Xs:Lcom/xiaopeng/libbluetooth/e;

.field Xt:[Ljava/lang/String;

.field Xu:[I

.field Xv:[I

.field Xw:[Ljava/lang/String;

.field private Xx:Lcom/xiaopeng/libbluetooth/b;

.field private Xy:Lcom/xiaopeng/libbluetooth/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libbluetooth/DemoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xt:[Ljava/lang/String;

    .line 18
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xu:[I

    .line 19
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xv:[I

    .line 20
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xw:[Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/DemoActivity$1;-><init>(Lcom/xiaopeng/libbluetooth/DemoActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xx:Lcom/xiaopeng/libbluetooth/b;

    .line 43
    new-instance v0, Lcom/xiaopeng/libbluetooth/DemoActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/DemoActivity$2;-><init>(Lcom/xiaopeng/libbluetooth/DemoActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xy:Lcom/xiaopeng/libbluetooth/c;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/libbluetooth/DemoActivity;)Lcom/xiaopeng/libbluetooth/f;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xq:Lcom/xiaopeng/libbluetooth/f;

    return-object p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/xiaopeng/libbluetooth/DemoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaopeng/libbluetooth/DemoActivity;)Lcom/xiaopeng/libbluetooth/g;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xr:Lcom/xiaopeng/libbluetooth/g;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/xiaopeng/libbluetooth/R$layout;->activity_demo_layout:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/libbluetooth/DemoActivity;->setContentView(I)V

    .line 63
    sget-object p1, Lcom/xiaopeng/libbluetooth/DemoActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate_before"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->pt()Lcom/xiaopeng/libbluetooth/e;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xs:Lcom/xiaopeng/libbluetooth/e;

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xs:Lcom/xiaopeng/libbluetooth/e;

    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xx:Lcom/xiaopeng/libbluetooth/b;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/b;)Lcom/xiaopeng/libbluetooth/f;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xq:Lcom/xiaopeng/libbluetooth/f;

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xs:Lcom/xiaopeng/libbluetooth/e;

    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xq:Lcom/xiaopeng/libbluetooth/f;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/a;)V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xs:Lcom/xiaopeng/libbluetooth/e;

    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xy:Lcom/xiaopeng/libbluetooth/c;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/c;)Lcom/xiaopeng/libbluetooth/g;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xr:Lcom/xiaopeng/libbluetooth/g;

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xs:Lcom/xiaopeng/libbluetooth/e;

    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xr:Lcom/xiaopeng/libbluetooth/g;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/a;)V

    .line 69
    sget-object p1, Lcom/xiaopeng/libbluetooth/DemoActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate_after"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->pt()Lcom/xiaopeng/libbluetooth/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xq:Lcom/xiaopeng/libbluetooth/f;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/f;)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->pt()Lcom/xiaopeng/libbluetooth/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->Xr:Lcom/xiaopeng/libbluetooth/g;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/g;)V

    .line 77
    return-void
.end method

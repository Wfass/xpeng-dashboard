.class public Lcom/xiaopeng/devtools/presenter/aftersales/d;
.super Ljava/lang/Object;
.source "DidInfoPresenter.java"


# static fields
.field private static final vv:[Ljava/lang/String;


# instance fields
.field private vu:Lcom/xiaopeng/devtools/view/aftersales/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    const-string v0, "CFC_CODE"

    const-string v1, "CURRENT_RUNNING_APP_ZONE"

    const-string v2, "MCU_SAVE_CONFIG"

    const-string v3, "CDU_FAULT_CODE"

    const-string v4, "CDU_CAR_FEATURE_CODE"

    const-string v5, "CDU_CAR_FEATURE_CODE_AFTERSALES"

    const-string v6, "ESK_CODE_WRITTEN_STATUS"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/d;->vv:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/a;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/d;->vu:Lcom/xiaopeng/devtools/view/aftersales/a;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/d;)Lcom/xiaopeng/devtools/view/aftersales/a;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/d;->vu:Lcom/xiaopeng/devtools/view/aftersales/a;

    return-object p0
.end method

.method static synthetic if()[Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/d;->vv:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ie()V
    .locals 1

    .line 25
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/d$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/d$1;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/d;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

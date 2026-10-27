.class public Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;
.super Ljava/lang/Object;
.source "XAppBIHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XAppBIHandler"


# instance fields
.field private mInfoSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartTimeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->mInfoSparseArray:Landroid/util/SparseArray;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->mStartTimeMap:Landroid/util/SparseArray;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->mInfoSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->mStartTimeMap:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public topAppChanged(ILcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "topInfo"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 27
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;ILcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

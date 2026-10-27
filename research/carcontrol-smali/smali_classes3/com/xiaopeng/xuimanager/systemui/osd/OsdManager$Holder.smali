.class Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager$Holder;
.super Ljava/lang/Object;
.source "OsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;-><init>(Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;
    .locals 1

    .line 77
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;

    return-object v0
.end method

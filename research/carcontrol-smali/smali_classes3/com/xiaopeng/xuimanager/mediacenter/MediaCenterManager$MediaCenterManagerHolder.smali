.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterManagerHolder;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaCenterManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 488
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    .locals 1

    .line 487
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    return-object v0
.end method

.class Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppManagerHolder;
.super Ljava/lang/Object;
.source "PresetAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresetAppManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;
    .locals 1

    .line 91
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;

    return-object v0
.end method

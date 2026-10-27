.class Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository$SingletonHolder;
.super Ljava/lang/Object;
.source "AppMetaRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;-><init>(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    return-object v0
.end method

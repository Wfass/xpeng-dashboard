.class Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository$LocalDataRepositoryHolder;
.super Ljava/lang/Object;
.source "DataRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalDataRepositoryHolder"
.end annotation


# static fields
.field public static final instance:Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository$LocalDataRepositoryHolder;->instance:Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

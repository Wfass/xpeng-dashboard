.class public final synthetic Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$8d2bhJizKd9asU4qKcKOH9BgGe8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$8d2bhJizKd9asU4qKcKOH9BgGe8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$8d2bhJizKd9asU4qKcKOH9BgGe8;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$8d2bhJizKd9asU4qKcKOH9BgGe8;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$8d2bhJizKd9asU4qKcKOH9BgGe8;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$8d2bhJizKd9asU4qKcKOH9BgGe8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->lambda$getAppInfos$10(I)[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object p1

    return-object p1
.end method

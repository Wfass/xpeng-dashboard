.class final Lcom/xiaopeng/lib/feature/CommonCarConfig;
.super Lcom/xiaopeng/lib/feature/BaseConfig;
.source "CommonCarConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/feature/CommonCarConfig$SingletonHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "CommonCarConfig"

.field private static final sLanguageCode:Ljava/lang/String; = "getCustomerNumbers"


# instance fields
.field private mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMockAll:Z

.field public mKeyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/feature/ConfigBean;",
            ">;"
        }
    .end annotation
.end field

.field private mMockMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParseEngine:Lcom/xiaopeng/lib/feature/ParseEngine;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/lib/feature/BaseConfig;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mIsMockAll:Z

    const-string v0, "CommonCarConfig"

    const-string v1, "CommonCarConfig, use cache"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/xiaopeng/lib/feature/ParseEngine;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/feature/ParseEngine;-><init>(Lcom/xiaopeng/lib/feature/ICallBack;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mParseEngine:Lcom/xiaopeng/lib/feature/ParseEngine;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mMockMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static getInstance()Lcom/xiaopeng/lib/feature/CommonCarConfig;
    .locals 1

    .line 12
    invoke-static {}, Lcom/xiaopeng/lib/feature/CommonCarConfig$SingletonHolder;->access$000()Lcom/xiaopeng/lib/feature/CommonCarConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clearCacheMap()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method varargs getFeature(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "getCustomerNumbers"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    iget-object p2, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 39
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/feature/ConfigBean;

    invoke-direct {v0, p2}, Lcom/xiaopeng/lib/feature/ConfigBean;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mParseEngine:Lcom/xiaopeng/lib/feature/ParseEngine;

    invoke-virtual {p2, p1, v0, p3}, Lcom/xiaopeng/lib/feature/ParseEngine;->parse(Ljava/lang/String;Lcom/xiaopeng/lib/feature/ConfigBean;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 41
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 47
    iget-boolean p3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mIsMockAll:Z

    if-eqz p3, :cond_3

    const-string p3, "true"

    .line 48
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "false"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    .line 54
    :cond_3
    iget-object p3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mMockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 55
    iget-object p2, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mMockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p2, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mMockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 59
    :cond_4
    iget-object p3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

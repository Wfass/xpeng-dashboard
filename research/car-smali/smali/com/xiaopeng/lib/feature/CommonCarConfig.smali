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

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mIsMockAll:Z

    .line 28
    const-string v0, "CommonCarConfig"

    const-string v1, "CommonCarConfig, use cache"

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

    .line 32
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

    .line 65
    return-void
.end method

.method varargs getFeature(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueStr"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 39
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/feature/ConfigBean;

    invoke-direct {v0, p2}, Lcom/xiaopeng/lib/feature/ConfigBean;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "configBean":Lcom/xiaopeng/lib/feature/ConfigBean;
    iget-object v1, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mParseEngine:Lcom/xiaopeng/lib/feature/ParseEngine;

    invoke-virtual {v1, p1, v0, p3}, Lcom/xiaopeng/lib/feature/ParseEngine;->parse(Ljava/lang/String;Lcom/xiaopeng/lib/feature/ConfigBean;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    .local v1, "result":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "resultStr":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mIsMockAll:Z

    if-eqz v3, :cond_3

    .line 48
    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "true"

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v3, "true"

    return-object v3

    .line 54
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mMockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    iget-object v3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mMockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mMockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 59
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/lib/feature/CommonCarConfig;->mCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v2
.end method

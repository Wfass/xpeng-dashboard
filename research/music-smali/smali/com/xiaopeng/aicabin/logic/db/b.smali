.class public Lcom/xiaopeng/aicabin/logic/db/b;
.super Ljava/lang/Object;
.source "DbHelperPool.java"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;",
            ">;",
            "Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/logic/db/b;->a:Ljava/util/Map;

    return-void
.end method

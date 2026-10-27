.class public Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;
.super Ljava/lang/Object;
.source "ElementDirectManager.java"


# static fields
.field private static final sElementDirectList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/direct/IElementDirect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->sElementDirectList:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;
    .locals 2

    .line 22
    sget-object v0, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->sElementDirectList:Ljava/util/Map;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    return-object v0
.end method

.method public static init(Lcom/xiaopeng/carcontrol/direct/IElementDirect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->sElementDirectList:Ljava/util/Map;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

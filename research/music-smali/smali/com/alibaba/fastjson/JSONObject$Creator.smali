.class final Lcom/alibaba/fastjson/JSONObject$Creator;
.super Ljava/lang/Object;
.source "JSONObject.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson/JSONObject$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1042
    new-instance v0, Lcom/alibaba/fastjson/JSONObject$Creator;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject$Creator;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONObject$Creator;->INSTANCE:Lcom/alibaba/fastjson/JSONObject$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1040
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject$Creator;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1

    .line 1045
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    return-object v0
.end method

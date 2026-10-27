.class public Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;
.super Ljava/lang/Object;
.source "GsonUtil.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomTypeAdapterFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/TypeAdapterFactory;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    .local p0, "this":Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;, "Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;, "Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory<TT;>;"
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 142
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_3

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 145
    :cond_2
    :goto_0
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$DoubleAdapter;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$DoubleAdapter;-><init>()V

    return-object v1

    .line 143
    :cond_3
    :goto_1
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$FloatAdapter;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$FloatAdapter;-><init>()V

    return-object v1
.end method

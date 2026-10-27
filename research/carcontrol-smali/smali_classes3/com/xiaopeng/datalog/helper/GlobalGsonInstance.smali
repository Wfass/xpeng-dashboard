.class public Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;
.super Ljava/lang/Object;
.source "GlobalGsonInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/datalog/helper/GlobalGsonInstance$Holder;
    }
.end annotation


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/datalog/helper/GlobalGsonInstance$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance$Holder;->INSTANCE:Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;

    return-object v0
.end method


# virtual methods
.method public getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

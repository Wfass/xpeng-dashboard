.class public Lcom/xiaopeng/datalog/b/b;
.super Ljava/lang/Object;
.source "GlobalGsonInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/datalog/b/b$a;
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

    iput-object v0, p0, Lcom/xiaopeng/datalog/b/b;->mGson:Lcom/google/gson/Gson;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/datalog/b/b$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/datalog/b/b;-><init>()V

    return-void
.end method

.method public static eW()Lcom/xiaopeng/datalog/b/b;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaopeng/datalog/b/b$a;->qw:Lcom/xiaopeng/datalog/b/b;

    return-object v0
.end method


# virtual methods
.method public eX()Lcom/google/gson/Gson;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/datalog/b/b;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

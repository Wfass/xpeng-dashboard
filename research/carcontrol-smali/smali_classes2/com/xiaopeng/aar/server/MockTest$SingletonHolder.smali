.class Lcom/xiaopeng/aar/server/MockTest$SingletonHolder;
.super Ljava/lang/Object;
.source "MockTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/MockTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/server/MockTest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/xiaopeng/aar/server/MockTest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/server/MockTest;-><init>(Lcom/xiaopeng/aar/server/MockTest$1;)V

    sput-object v0, Lcom/xiaopeng/aar/server/MockTest$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/MockTest;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/aar/server/MockTest;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/aar/server/MockTest$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/MockTest;

    return-object v0
.end method

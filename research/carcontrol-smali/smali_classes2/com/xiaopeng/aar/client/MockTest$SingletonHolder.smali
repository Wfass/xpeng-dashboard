.class Lcom/xiaopeng/aar/client/MockTest$SingletonHolder;
.super Ljava/lang/Object;
.source "MockTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/client/MockTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/client/MockTest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/xiaopeng/aar/client/MockTest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/client/MockTest;-><init>(Lcom/xiaopeng/aar/client/MockTest$1;)V

    sput-object v0, Lcom/xiaopeng/aar/client/MockTest$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/MockTest;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/aar/client/MockTest;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/aar/client/MockTest$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/MockTest;

    return-object v0
.end method

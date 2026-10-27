.class Lcom/xiaopeng/carcontrol/direct/NapaElementDirect$SingletonHolder;
.super Ljava/lang/Object;
.source "NapaElementDirect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect$SingletonHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect$SingletonHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;

    return-object v0
.end method

.class Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5$SingletonHolder;
.super Ljava/lang/Object;
.source "ElementDirectForOS5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5;-><init>(Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5$SingletonHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5$SingletonHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5;

    return-object v0
.end method

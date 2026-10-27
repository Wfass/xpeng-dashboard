.class Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$Holder;
.super Ljava/lang/Object;
.source "CheckCarMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$Holder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;
    .locals 1

    .line 84
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$Holder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    return-object v0
.end method

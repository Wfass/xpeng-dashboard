.class public final synthetic Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$JEgaIYILfEpJJnJdmDpUeG8I9mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$JEgaIYILfEpJJnJdmDpUeG8I9mo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$JEgaIYILfEpJJnJdmDpUeG8I9mo;

    invoke-direct {v0}, Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$JEgaIYILfEpJJnJdmDpUeG8I9mo;-><init>()V

    sput-object v0, Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$JEgaIYILfEpJJnJdmDpUeG8I9mo;->INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CarUiInstaller$JEgaIYILfEpJJnJdmDpUeG8I9mo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/car/ui/core/CarUiInstaller;->lambda$JEgaIYILfEpJJnJdmDpUeG8I9mo(I)[Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

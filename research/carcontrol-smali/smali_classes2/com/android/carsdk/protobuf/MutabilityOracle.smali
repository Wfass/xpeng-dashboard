.class interface abstract Lcom/android/carsdk/protobuf/MutabilityOracle;
.super Ljava/lang/Object;
.source "MutabilityOracle.java"


# static fields
.field public static final IMMUTABLE:Lcom/android/carsdk/protobuf/MutabilityOracle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/android/carsdk/protobuf/MutabilityOracle$1;

    invoke-direct {v0}, Lcom/android/carsdk/protobuf/MutabilityOracle$1;-><init>()V

    sput-object v0, Lcom/android/carsdk/protobuf/MutabilityOracle;->IMMUTABLE:Lcom/android/carsdk/protobuf/MutabilityOracle;

    return-void
.end method


# virtual methods
.method public abstract ensureMutable()V
.end method

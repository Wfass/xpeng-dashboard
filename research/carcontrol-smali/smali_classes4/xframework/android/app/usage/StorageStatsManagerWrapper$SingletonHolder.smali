.class Lxframework/android/app/usage/StorageStatsManagerWrapper$SingletonHolder;
.super Ljava/lang/Object;
.source "StorageStatsManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxframework/android/app/usage/StorageStatsManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lxframework/android/app/usage/StorageStatsManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lxframework/android/app/usage/StorageStatsManagerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxframework/android/app/usage/StorageStatsManagerWrapper;-><init>(Lxframework/android/app/usage/StorageStatsManagerWrapper$1;)V

    sput-object v0, Lxframework/android/app/usage/StorageStatsManagerWrapper$SingletonHolder;->INSTANCE:Lxframework/android/app/usage/StorageStatsManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lxframework/android/app/usage/StorageStatsManagerWrapper;
    .locals 1

    .line 32
    sget-object v0, Lxframework/android/app/usage/StorageStatsManagerWrapper$SingletonHolder;->INSTANCE:Lxframework/android/app/usage/StorageStatsManagerWrapper;

    return-object v0
.end method

.class Lxframework/android/common/SysWrapper$SingletonHolder;
.super Ljava/lang/Object;
.source "SysWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxframework/android/common/SysWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lxframework/android/common/SysWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lxframework/android/common/SysWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxframework/android/common/SysWrapper;-><init>(Lxframework/android/common/SysWrapper$1;)V

    sput-object v0, Lxframework/android/common/SysWrapper$SingletonHolder;->INSTANCE:Lxframework/android/common/SysWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lxframework/android/common/SysWrapper;
    .locals 1

    .line 24
    sget-object v0, Lxframework/android/common/SysWrapper$SingletonHolder;->INSTANCE:Lxframework/android/common/SysWrapper;

    return-object v0
.end method

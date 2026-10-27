.class public final Lcom/android/car/ui/core/a;
.super Ljava/lang/Object;
.source "BaseLayoutController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/core/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/android/car/ui/core/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/android/car/ui/core/a$a;

.field private c:Lcom/android/car/ui/toolbar/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/car/ui/core/a;->a:Ljava/util/Map;

    return-void
.end method

.method static a(Landroid/app/Activity;)Lcom/android/car/ui/core/a;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/car/ui/core/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/core/a;

    return-object p0
.end method


# virtual methods
.method a()Lcom/android/car/ui/toolbar/c;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/car/ui/core/a;->c:Lcom/android/car/ui/toolbar/c;

    return-object v0
.end method

.method b()Lcom/android/car/ui/baselayout/a;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/car/ui/core/a;->b:Lcom/android/car/ui/core/a$a;

    invoke-virtual {v0}, Lcom/android/car/ui/core/a$a;->a()Lcom/android/car/ui/baselayout/a;

    move-result-object v0

    return-object v0
.end method

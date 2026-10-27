.class public Lapg;
.super Ljava/lang/Object;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapg$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field b:Landroid/content/BroadcastReceiver;

.field private final c:Landroid/content/IntentFilter;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Laph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lapg;->c:Landroid/content/IntentFilter;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lapg;->d:Ljava/util/Map;

    .line 25
    new-instance v0, Lapg$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lapg$a;-><init>(Lapg;Lapg$1;)V

    iput-object v0, p0, Lapg;->b:Landroid/content/BroadcastReceiver;

    .line 18
    iput-object p1, p0, Lapg;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lapg;)Ljava/util/Map;
    .locals 0

    .line 13
    iget-object p0, p0, Lapg;->d:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Laph;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lapg;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p2, p0, Lapg;->c:Landroid/content/IntentFilter;

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public g_()V
    .locals 3

    .line 33
    iget-object v0, p0, Lapg;->a:Landroid/content/Context;

    iget-object v1, p0, Lapg;->b:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lapg;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.class Lorg/eclipse/paho/android/service/a$a$1;
.super Ljava/lang/Object;
.source "AlarmPingSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/a$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/a$a;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/a$a;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a$1;->a:Lorg/eclipse/paho/android/service/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a$a$1;->a:Lorg/eclipse/paho/android/service/a$a;

    invoke-static {v0}, Lorg/eclipse/paho/android/service/a$a;->a(Lorg/eclipse/paho/android/service/a$a;)V

    return-void
.end method

.class Lorg/eclipse/paho/android/service/a$b$1;
.super Ljava/lang/Object;
.source "AlarmPingSender.java"

# interfaces
.implements Lced;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/a$b;->a([Lcew;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/a$b;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/a$b;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$b$1;->a:Lorg/eclipse/paho/android/service/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lceh;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "AlarmPingSender"

    const-string p2, "Ping async task : Failed."

    .line 149
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$b$1;->a:Lorg/eclipse/paho/android/service/a$b;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/eclipse/paho/android/service/a$b;->a:Z

    return-void
.end method

.method public onSuccess(Lceh;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$b$1;->a:Lorg/eclipse/paho/android/service/a$b;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/eclipse/paho/android/service/a$b;->a:Z

    return-void
.end method

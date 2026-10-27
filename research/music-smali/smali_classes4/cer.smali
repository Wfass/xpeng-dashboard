.class public Lcer;
.super Lceo;
.source "MqttPersistenceException.java"


# static fields
.field public static final REASON_CODE_PERSISTENCE_IN_USE:S = 0x7dc8s

.field private static final serialVersionUID:J = 0x12cL


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lceo;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lceo;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

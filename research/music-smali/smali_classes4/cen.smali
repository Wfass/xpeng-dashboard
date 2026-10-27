.class public Lcen;
.super Lceu;
.source "MqttDeliveryToken.java"

# interfaces
.implements Lcef;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lceu;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lceu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcep;
    .locals 1

    .line 47
    iget-object v0, p0, Lcen;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->k()Lcep;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcep;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcen;->a:Lcfn;

    invoke-virtual {v0, p1}, Lcfn;->a(Lcep;)V

    return-void
.end method

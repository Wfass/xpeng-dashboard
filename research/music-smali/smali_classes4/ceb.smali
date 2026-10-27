.class public Lceb;
.super Ljava/lang/Object;
.source "BufferedMessage.java"


# instance fields
.field private a:Lcgs;

.field private b:Lceu;


# direct methods
.method public constructor <init>(Lcgs;Lceu;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lceb;->a:Lcgs;

    .line 32
    iput-object p2, p0, Lceb;->b:Lceu;

    return-void
.end method


# virtual methods
.method public a()Lcgs;
    .locals 1

    .line 36
    iget-object v0, p0, Lceb;->a:Lcgs;

    return-object v0
.end method

.method public b()Lceu;
    .locals 1

    .line 40
    iget-object v0, p0, Lceb;->b:Lceu;

    return-object v0
.end method

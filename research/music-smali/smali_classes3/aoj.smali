.class public Laoj;
.super Ljava/lang/Object;
.source "InitEventHolder.java"

# interfaces
.implements Laoi;


# static fields
.field private static volatile b:Laoj;


# instance fields
.field private a:Laoi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Laoj;

    invoke-direct {v0}, Laoj;-><init>()V

    sput-object v0, Laoj;->b:Laoj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Laoi;
    .locals 1

    .line 24
    sget-object v0, Laoj;->b:Laoj;

    return-object v0
.end method

.method public static a(Laoi;)V
    .locals 1

    .line 28
    sget-object v0, Laoj;->b:Laoj;

    iput-object p0, v0, Laoj;->a:Laoi;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 16
    iget-object v0, p0, Laoj;->a:Laoi;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1, p2}, Laoi;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

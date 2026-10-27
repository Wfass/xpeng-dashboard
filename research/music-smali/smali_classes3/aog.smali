.class public Laog;
.super Ljava/lang/Object;
.source "GlobalGsonInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Laog;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method synthetic constructor <init>(Laog$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Laog;-><init>()V

    return-void
.end method

.method public static a()Laog;
    .locals 1

    .line 16
    sget-object v0, Laog$a;->a:Laog;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/gson/Gson;
    .locals 1

    .line 26
    iget-object v0, p0, Laog;->a:Lcom/google/gson/Gson;

    return-object v0
.end method

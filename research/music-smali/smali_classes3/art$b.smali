.class public Lart$b;
.super Ljava/lang/Object;
.source "AiSuggestEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lart$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lart$b;->a:Ljava/lang/String;

    return-object v0
.end method

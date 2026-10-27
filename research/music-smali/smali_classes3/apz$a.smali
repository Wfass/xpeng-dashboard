.class public abstract Lapz$a;
.super Ljava/lang/Object;
.source "BizHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lapz$a;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/reflect/Type;
    .locals 1

    .line 178
    iget-object v0, p0, Lapz$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public abstract a(ILjava/lang/String;Z)V
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

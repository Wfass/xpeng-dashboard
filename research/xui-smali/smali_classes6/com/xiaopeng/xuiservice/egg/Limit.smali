.class public abstract Lcom/xiaopeng/xuiservice/egg/Limit;
.super Ljava/lang/Object;
.source "Limit.java"


# static fields
.field public static final SCOPE_ALL:Ljava/lang/String; = "all"

.field public static final SCOPE_IG:Ljava/lang/String; = "ig"


# instance fields
.field public final scope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/Limit;->scope:Ljava/lang/String;

    .line 13
    return-void
.end method

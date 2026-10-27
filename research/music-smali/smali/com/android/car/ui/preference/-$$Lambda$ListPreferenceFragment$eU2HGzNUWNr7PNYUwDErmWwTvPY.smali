.class public final synthetic Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$eU2HGzNUWNr7PNYUwDErmWwTvPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/ui/recyclerview/a$c;


# instance fields
.field private final synthetic f$0:Lcom/android/car/ui/preference/ListPreferenceFragment;

.field private final synthetic f$1:Lcom/android/car/ui/recyclerview/g;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/preference/ListPreferenceFragment;Lcom/android/car/ui/recyclerview/g;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$eU2HGzNUWNr7PNYUwDErmWwTvPY;->f$0:Lcom/android/car/ui/preference/ListPreferenceFragment;

    iput-object p2, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$eU2HGzNUWNr7PNYUwDErmWwTvPY;->f$1:Lcom/android/car/ui/recyclerview/g;

    iput-object p3, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$eU2HGzNUWNr7PNYUwDErmWwTvPY;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Lcom/android/car/ui/recyclerview/a;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$eU2HGzNUWNr7PNYUwDErmWwTvPY;->f$0:Lcom/android/car/ui/preference/ListPreferenceFragment;

    iget-object v1, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$eU2HGzNUWNr7PNYUwDErmWwTvPY;->f$1:Lcom/android/car/ui/recyclerview/g;

    iget-object v2, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$eU2HGzNUWNr7PNYUwDErmWwTvPY;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/car/ui/preference/ListPreferenceFragment;->lambda$onViewCreated$0$ListPreferenceFragment(Lcom/android/car/ui/recyclerview/g;Ljava/util/List;Lcom/android/car/ui/recyclerview/a;Z)V

    return-void
.end method
